.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$16;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 658
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$16;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$16;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->saveAutoRejectNumber()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$2100(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    .line 661
    return-void
.end method
