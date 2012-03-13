.class Lcom/sec/android/app/callsetting/allcalls/BlackList$1;
.super Landroid/os/Handler;
.source "BlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;->notifyDataSetChanged()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->stopContactQuery()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    .line 131
    :cond_0
    return-void
.end method
