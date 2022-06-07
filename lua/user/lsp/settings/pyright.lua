return {
-- xiaodong update , tmp solutio for support python lsp dynamic worksapce symobols 
  root_dir = function()
    return vim.fn.getcwd()
  end ,

	settings = {
    python = {
      analysis = {
        typeCheckingMode = "off"
      }
    }
	}
}
