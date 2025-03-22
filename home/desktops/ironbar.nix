{ inputs, ... }:
{
	programs.ironbar = {
		enable = true;
		package = inputs.ironbar;
		features = ["feature" "another_feature"];
		config = {
			position = "top";
		};
	};
}
