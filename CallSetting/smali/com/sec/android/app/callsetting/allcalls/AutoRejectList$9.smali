.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$9;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogAutoRejectNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$9;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$9;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogSearch()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$1200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    .line 656
    return-void
.end method
