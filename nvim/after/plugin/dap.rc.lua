local dap = require('dap')

dap.adapters.python = {
  type = 'executable';
  command = '/home/ctw/.virtualenvs/debugpy/bin/python';
  args = { '-m', 'debugpy.adapter' };
}

--command = os.getenv("VIRTUAL_ENV") .. "/bin/python3"
dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch';
    name = "Launch file";

    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}"; -- This configuration will launch the current file if used.
	 --args =  "--input-path","/home/ctw/projects/kpi_inputs/hoo/data.parquet";
             --"--output-path","/home/ctw/projects/kpi_outpus/hoo";
             --"--hoo-variant", "hoo130";
             --"--construction-site-end-time-limit", "10";
    --pythonPath = function()
      -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
      -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
      -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
      --local cwd = vim.fn.getcwd()
      --if vim.fn.executable(cwd .. '/venv/bin/python3') == 1 then
        --return cwd .. '/venv/bin/python'
      --elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
        --return cwd .. '/.venv/bin/python'
      --else
        --return '/usr/local/lib/python3.8/dist-packages'
      --end
	 --end;
  },
}

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode-10', -- adjust as needed, must be absolute path
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {"/home/ctw/autobots/mdf4_tools/mdf4_lib/src/test.MF4"}

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,
  },
}

-- If you want to use this for Rust and C, add something like this:

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
