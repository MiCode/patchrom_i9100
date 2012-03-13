.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$1;
.super Landroid/os/Handler;
.source "WhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList$AutoRejectAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_0
    return-void
.end method
