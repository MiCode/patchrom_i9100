.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$15;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;->addWhiteListDialog()V
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
    .line 651
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$15;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$15;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->alertdialogSearch()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$2000(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    .line 654
    return-void
.end method
