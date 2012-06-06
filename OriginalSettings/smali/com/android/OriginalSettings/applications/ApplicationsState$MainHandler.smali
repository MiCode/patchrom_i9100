.class Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/ApplicationsState;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 313
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    goto :goto_0

    .line 330
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    goto :goto_0

    .line 340
    :pswitch_5
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
