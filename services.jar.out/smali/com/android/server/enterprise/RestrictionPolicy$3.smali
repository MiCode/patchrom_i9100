.class Lcom/android/server/enterprise/RestrictionPolicy$3;
.super Landroid/os/Handler;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/RestrictionPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 323
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 326
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.voicerecorder.HIDENOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionPolicy;->access$200(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
