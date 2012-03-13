.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$2;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;->AutoRejectLayoutInit()V
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
    .line 263
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$402(Lcom/sec/android/app/callsetting/allcalls/WhiteList;I)I

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->addWhiteListDialog()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$500(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    .line 267
    return-void
.end method
