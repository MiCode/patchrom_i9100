.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$2;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->AutoRejectLayoutInit()V
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
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$102(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    const/4 v1, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$202(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogAutoRejectNumber()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$300(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    .line 216
    return-void
.end method
