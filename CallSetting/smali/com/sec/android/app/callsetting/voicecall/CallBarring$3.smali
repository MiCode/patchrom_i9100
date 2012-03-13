.class Lcom/sec/android/app/callsetting/voicecall/CallBarring$3;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/voicecall/CallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$3;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$3;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getCallBarring()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$600(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    .line 272
    return-void
.end method
