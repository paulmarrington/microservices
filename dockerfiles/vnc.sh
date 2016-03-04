#!/bin/bash
if [ ! -f /root/.blackbox.rc ]; then
cd /root
mkdir .blackbox
cat > .blackboxrc << EOF
session.styleFile: /usr/share/blackbox/styles/Blue
session.menuFile: /root/.blackbox/menu
session.screen0.slit.placement: CenterRight
session.screen0.slit.direction: Vertical
session.screen0.slit.onTop: False
session.screen0.slit.autoHide: False
session.screen0.toolbar.onTop: False
session.screen0.toolbar.autoHide: False
session.screen0.toolbar.placement: BottomCenter
session.screen0.toolbar.widthPercent: 66
session.screen0.enableToolbar: True
session.screen0.workspaces: 4
session.screen0.workspaceNames: Workspace 1,Workspace 2,Workspace 3,Workspace 4
session.screen0.strftimeFormat: %I:%M %p
session.windowSnapThreshold: 0
session.autoRaiseDelay: 400
session.placementIgnoresShaded: True
session.focusLastWindow: True
session.opaqueMove: True
session.changeWorkspaceWithMouseWheel: True
session.imageDither: OrderedDither
session.windowPlacement: RowSmartPlacement
session.shadeWindowWithMouseWheel: True
session.opaqueResize: True
session.toolbarActionsWithMouseWheel: True
session.rowPlacementDirection: LeftToRight
session.maximumColors: 0
session.disableBindingsWithScrollLock: False
session.fullMaximization: False
session.colPlacementDirection: TopToBottom
session.doubleClickInterval: 250
session.edgeSnapThreshold: 0
session.focusNewWindows: True
session.focusModel: ClickToFocus
EOF
cat > .blackbox/menu << EOF
[begin] (b l a c k b o x )
    [exec] (xterm) {xterm -ls}
	[nop] ()
	[reconfig] (reconfigure)
	[restart] (restart) {}
	[exit] (exit)
[end]
EOF
fi
#x11vnc -forever -create -geometry 3200x1800
tail -f /dev/null