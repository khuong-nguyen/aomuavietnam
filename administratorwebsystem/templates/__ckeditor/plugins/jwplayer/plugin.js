CKEDITOR.plugins.add('jwplayer',{requires:['dialog'],init:function(editor){var pluginName='jwplayer';CKEDITOR.dialog.add(pluginName,this.path+'dialogs/jwplayer.js');editor.addCommand(pluginName,new CKEDITOR.dialogCommand(pluginName));editor.ui.addButton('jwplayer',{label:'jwplayer',command:pluginName,icon:this.path+'jwplayer/jwPlayer.gif',});}});