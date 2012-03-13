.class Lcom/sec/android/app/callsetting/allcalls/BlackList$7;
.super Ljava/lang/Object;
.source "BlackList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;->softkeyRightRun(Landroid/view/View;)V
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
    .line 420
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$7;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$7;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$302(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)I

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$7;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->makeScreen()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1600(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    .line 424
    return-void
.end method
