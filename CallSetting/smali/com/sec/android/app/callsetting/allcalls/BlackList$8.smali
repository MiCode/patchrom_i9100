.class Lcom/sec/android/app/callsetting/allcalls/BlackList$8;
.super Ljava/lang/Object;
.source "BlackList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 499
    packed-switch p2, :pswitch_data_0

    .line 511
    :goto_0
    return-void

    .line 501
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->callMatchCriteriaToEditNum()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1700(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    goto :goto_0

    .line 506
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->deleteDialog()V

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
