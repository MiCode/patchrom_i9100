.class Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$1;
.super Ljava/lang/Object;
.source "BlackListNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->alertdialogAutoRejectNumber()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$600(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V

    .line 918
    return-void
.end method
