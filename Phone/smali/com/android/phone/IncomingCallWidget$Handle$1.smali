.class Lcom/android/phone/IncomingCallWidget$Handle$1;
.super Landroid/widget/FrameLayout;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingCallWidget$Handle;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 356
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 357
    packed-switch p1, :pswitch_data_0

    .line 362
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->access$100(Lcom/android/phone/IncomingCallWidget$Handle;)V

    .line 365
    :goto_0
    return-void

    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->access$000(Lcom/android/phone/IncomingCallWidget$Handle;)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
