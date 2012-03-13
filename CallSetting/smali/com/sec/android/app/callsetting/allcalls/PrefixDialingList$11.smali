.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$11;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->alertdialogPrefixNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 582
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$11;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->prefixNumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$400(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$202(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 583
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
