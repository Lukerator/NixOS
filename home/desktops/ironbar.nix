{ inputs, ... }:
{
	programs.ironbar = {
		enable = true;
		package = inputs.ironbar;
	};
}
