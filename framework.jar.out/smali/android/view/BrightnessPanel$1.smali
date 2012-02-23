.class Landroid/view/BrightnessPanel$1;
.super Landroid/os/Handler;
.source "BrightnessPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BrightnessPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/BrightnessPanel;


# direct methods
.method constructor <init>(Landroid/view/BrightnessPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Landroid/view/BrightnessPanel$1;->this$0:Landroid/view/BrightnessPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Landroid/view/BrightnessPanel$1;->this$0:Landroid/view/BrightnessPanel;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/view/BrightnessPanel;->onShowBrightChanged(I)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
