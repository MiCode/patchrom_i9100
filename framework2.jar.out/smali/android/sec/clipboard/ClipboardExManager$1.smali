.class Landroid/sec/clipboard/ClipboardExManager$1;
.super Landroid/os/Handler;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040655

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040766

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Fail set data "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040659

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
