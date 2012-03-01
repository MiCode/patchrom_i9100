.class Lcom/android/phone/CallCard$1;
.super Landroid/os/Handler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 201
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->CallEndTimeBlink()V
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$000(Lcom/android/phone/CallCard;)V

    goto :goto_0

    .line 204
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->RecInfoBlink()V
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)V

    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method
