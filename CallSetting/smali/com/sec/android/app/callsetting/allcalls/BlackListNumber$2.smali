.class Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$2;
.super Ljava/lang/Object;
.source "BlackListNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->AutoRejectLayoutInit()V
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
    .line 269
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->alertdialogSearch()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$100(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    .line 272
    return-void
.end method
