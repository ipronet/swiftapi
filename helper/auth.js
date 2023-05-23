const USERS = require("../model/User/UserModel");
const { list_to_tree, getUniqueListBy } = require("../helper/func");
module.exports = {
FilterMenu: async (results) => {
    let roleResult = await USERS.FindRole(results.roleid);

  if (!roleResult) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Sorry, No Role has been assigned to this account`,
    });
  }

  //Get Role Menu List

  let roleMenuList = await USERS.FindRoleMenu(results.roleid);


  if (!roleMenuList) {
    return res.status(200).json({
      Status: 0,
      Data: [],
      Message: `Sorry, No Menus has been assigned to your role`,
    });
  }

  //Get User Menu

  let deniedResult = await USERS.FindUserMenu(results.id, 0);
  let allowedResult = await USERS.FindUserMenu(results.id, 1);

  let packMenu = [];

  for (const iterator of roleMenuList) {
    let newRoleMenu = {
      menu: iterator.menuid,
    };

    packMenu.push(newRoleMenu);
  }

  packMenu = packMenu.filter(
    (ar) => !deniedResult.find((rm) => rm.menu === ar.menu)
  );
  packMenu.push(...allowedResult);

  let NavItem = [];

let parser = JSON.stringify(packMenu)
let newparser = JSON.parse(parser)

//remove duplicates
const noDuplicates = getUniqueListBy(newparser, 'menu')
  for (const iterator of noDuplicates) {


    let menus = await USERS.FindMenu(iterator.menu);
    NavItem.push(menus);
  }
   let listing = list_to_tree(NavItem);

   let userData = {
    userInfo :results,
    menus : listing
   }
   return userData

}
}