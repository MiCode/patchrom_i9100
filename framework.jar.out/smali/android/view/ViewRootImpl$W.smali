.class Landroid/view/ViewRootImpl$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
.field private final mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .parameter "viewAncestor"

    .prologue
    .line 5005
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 5006
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 5007
    return-void
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .locals 4
    .parameter "permission"

    .prologue
    .line 5048
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5051
    :goto_0
    return v1

    .line 5050
    :catch_0
    move-exception v0

    .line 5051
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 5087
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5088
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5089
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchCloseSystemDialogs(Ljava/lang/String;)V

    .line 5091
    :cond_0
    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 5019
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5020
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5021
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchAppVisibility(Z)V

    .line 5023
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 5115
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5116
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5117
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 5119
    :cond_0
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .prologue
    .line 5033
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5034
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5035
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchGetNewSurface()V

    .line 5037
    :cond_0
    return-void
.end method

.method public dispatchScreenState(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 5026
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5027
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5028
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScreenStateChange(Z)V

    .line 5030
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 2
    .parameter "seq"
    .parameter "globalVisibility"
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 5123
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5124
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5125
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->dispatchSystemUiVisibilityChanged(IIII)V

    .line 5128
    :cond_0
    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 3
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 5105
    if-eqz p6, :cond_0

    .line 5107
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5111
    :cond_0
    :goto_0
    return-void

    .line 5108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "sync"

    .prologue
    .line 5095
    if-eqz p5, :cond_0

    .line 5097
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5101
    :cond_0
    :goto_0
    return-void

    .line 5098
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doneAnimating()V
    .locals 2

    .prologue
    .line 5131
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5132
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5133
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchDoneAnimating()V

    .line 5135
    :cond_0
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "command"
    .parameter "parameters"
    .parameter "out"

    .prologue
    .line 5056
    iget-object v5, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    .line 5057
    .local v4, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_1

    .line 5058
    iget-object v3, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 5059
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 5060
    const-string v5, "android.permission.DUMP"

    invoke-static {v5}, Landroid/view/ViewRootImpl$W;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 5062
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insufficient permissions to invoke executeCommand() from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5067
    :cond_0
    const/4 v0, 0x0

    .line 5069
    .local v0, clientStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5070
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .local v1, clientStream:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v3, p1, p2, v1}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 5074
    if-eqz v1, :cond_1

    .line 5076
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5084
    .end local v1           #clientStream:Ljava/io/OutputStream;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 5077
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #view:Landroid/view/View;
    :catch_0
    move-exception v2

    .line 5078
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 5071
    .end local v1           #clientStream:Ljava/io/OutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 5072
    .restart local v2       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5074
    if-eqz v0, :cond_1

    .line 5076
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 5077
    :catch_2
    move-exception v2

    .line 5078
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 5074
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_2

    .line 5076
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5079
    :cond_2
    :goto_3
    throw v5

    .line 5077
    :catch_3
    move-exception v2

    .line 5078
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 5074
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #clientStream:Ljava/io/OutputStream;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 5071
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #clientStream:Ljava/io/OutputStream;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;II)V
    .locals 9
    .parameter "w"
    .parameter "h"
    .parameter "contentInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5011
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5012
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 5013
    invoke-virtual/range {v0 .. v8}, Landroid/view/ViewRootImpl;->dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;II)V

    .line 5016
    :cond_0
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 2
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    .line 5040
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5041
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5042
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    .line 5044
    :cond_0
    return-void
.end method
