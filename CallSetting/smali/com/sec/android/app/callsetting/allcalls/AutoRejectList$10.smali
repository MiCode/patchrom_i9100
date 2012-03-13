.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$10;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 659
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$10;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->saveAutoRejectNumber()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$1300(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V

    .line 662
    return-void
.end method
