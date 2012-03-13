.class Lcom/sec/android/app/callsetting/allcalls/WhiteList$8;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/WhiteList;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 460
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 462
    packed-switch p2, :pswitch_data_0

    .line 474
    :goto_0
    return-void

    .line 464
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/WhiteList;->addWhiteListDialog()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->access$500(Lcom/sec/android/app/callsetting/allcalls/WhiteList;)V

    goto :goto_0

    .line 469
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/WhiteList$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/WhiteList;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/WhiteList;->deleteDialog()V

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
