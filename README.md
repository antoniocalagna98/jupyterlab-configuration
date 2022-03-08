
# JupyterLab-Configuration

The [JupyterLab-Configurator](https://www.lean-data-science.com) lets you easily create your **JupyterLab configuration** that runs JupyterLab in a **container** and automates the whole setup using **scripts**. A container is a separated environment that encapsulates the libraries you install in it without affecting your host computer. Scripts automate executing all the commands you would normally need to run manually. For you can review and edit scripts, you get full control of your configuration at any time.

Current JupyterLab configuration:

1. numpy, matplotlib, pandas
1. texlive (latex components for matplotlib)
1. OneDarkPro Theme (https://github.com/johnnybarrels/jupyterlab_onedarkpro.git)
1. JupyterLab-LSP Extensions (https://github.com/jupyter-lsp/jupyterlab-lsp)
1. Custom configuration files (e.g. pycodestyle, notebook, texteditor) 

The following picture shows the JupyterLab configuration in action. **Use** it with two simple steps:

1. Execute `sh {path_to_your_project}/run.sh`, it will build the image locally (just once) and create a container
1. Open `localhost:8888` from a browser
1. Or access remotely `<RemoteIP>:8888`

1. You can mount a local folder (e.g. git) by: `mount --bind /absolute/path/to/some/folder mounted_folder` (restart after!)
1. You can also map port to localhost with: `ssh -L 8888:localhost:8888 <user>@<RemoteIP>`

#<table class="image">
#<tr><td><img src="config_use.png" width="600"></td></tr>
#<tr><td class="caption" >Using the JupyterLab configuration</td></tr>
#</table>
