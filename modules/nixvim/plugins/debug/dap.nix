{ pkgs, ... }:
{
  
plugins = {
    dap-ui.enable = true;
    dap-lldb = {
      enable = true;
      settings.codelldb_path = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
    };
    dap = {
      enable = true;
      signs = {
        dapBreakpoint.text = "🛑";
        dapBreakpointCondition.text = "🛑";
        dapBreakpointRejected.text = "🚫";
        dapLogPoint.text = "📝";
        dapStopped.text = "🚦";
      };
    };
  };
}
