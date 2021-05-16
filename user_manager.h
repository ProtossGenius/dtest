#pragma once
#include <memory>
#include "smncpp/string_tree.h"
namespace smdtest {

	class User;
	/* UserManager manager user, and save its value.
	 * 
	 */

	struct UserInfo{
		std::shared_ptr<User> user;
		std::shared_ptr<smnet::StringTreeValue> values;
	};
	class UserManager{

	};
}

