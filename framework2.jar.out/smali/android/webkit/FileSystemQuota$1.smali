.class Landroid/webkit/FileSystemQuota$1;
.super Landroid/os/Handler;
.source "FileSystemQuota.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/FileSystemQuota;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/FileSystemQuota;


# direct methods
.method constructor <init>(Landroid/webkit/FileSystemQuota;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Landroid/webkit/FileSystemQuota$1;->this$0:Landroid/webkit/FileSystemQuota;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 76
    :pswitch_0
    #calls: Landroid/webkit/FileSystemQuota;->nativeClearAll()V
    invoke-static {}, Landroid/webkit/FileSystemQuota;->access$000()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
