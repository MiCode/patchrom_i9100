.class Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;
.super Landroid/os/Handler;
.source "BargeInRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "commandType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, result:I
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->delayedStartBargeIn(I)V

    .line 91
    return-void
.end method
