.class Lcom/android/OriginalSettings/CryptKeeper$1;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptKeeper$1;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$1;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    #calls: Lcom/android/OriginalSettings/CryptKeeper;->updateProgress()V
    invoke-static {v0}, Lcom/android/OriginalSettings/CryptKeeper;->access$700(Lcom/android/OriginalSettings/CryptKeeper;)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$1;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    #calls: Lcom/android/OriginalSettings/CryptKeeper;->cooldown()V
    invoke-static {v0}, Lcom/android/OriginalSettings/CryptKeeper;->access$200(Lcom/android/OriginalSettings/CryptKeeper;)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
