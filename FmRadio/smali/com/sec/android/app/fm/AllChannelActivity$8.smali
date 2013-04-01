.class Lcom/sec/android/app/fm/AllChannelActivity$8;
.super Ljava/lang/Object;
.source "AllChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/AllChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$8;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 572
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$8;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->Rename_FreqName()V

    goto :goto_0
.end method
