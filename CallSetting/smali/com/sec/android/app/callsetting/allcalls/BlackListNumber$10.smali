.class Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$10;
.super Ljava/lang/Object;
.source "BlackListNumber.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->alertdialogAutoRejectNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->mMatchCriteria:I
    invoke-static {v0, p2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$1202(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;I)I

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->autoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$500(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->notifyDataSetChanged()V

    .line 655
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 656
    return-void
.end method
