return {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "rcarriga/nvim-dap-ui",
      dependencies = {
        "nvim-neotest/nvim-nio"
      }
    },
    "leoluz/nvim-dap-go",
  },
  config = function()
    local status_ok, dap = pcall(require, "dap")
    if not status_ok then
      print("Couldn't find dap!")
      return
    end

    local status_ok, dapui = pcall(require, "dapui")
    if not status_ok then
      print("Couldn't find dap-ui!")
      return
    end
    dapui.setup({})
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<leader>c", dap.continue, {})


    local status_ok, dap_go = pcall(require, "dap-go")
    if not status_ok then
      print("Couldn't find dap_go!")
      return
    end
    dap_go.setup({})
  end,
}
