.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$3;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->PrefixDialingEventInit()V
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
    .line 257
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$102(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    const/4 v1, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->mState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$202(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;I)I

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->alertdialogPrefixNumber()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$300(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    .line 266
    return-void
.end method
