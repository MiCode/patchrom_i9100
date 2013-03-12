.class Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;
.super Landroid/os/Handler;
.source "IMSConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/IMSConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/IMSConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/IMSConnection;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->processNextPostDialChar()V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->releaseWakeLock()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
