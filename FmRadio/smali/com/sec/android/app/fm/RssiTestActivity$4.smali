.class Lcom/sec/android/app/fm/RssiTestActivity$4;
.super Ljava/lang/Object;
.source "RssiTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RssiTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RssiTestActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RssiTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sec/android/app/fm/RssiTestActivity$4;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$4;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$000(Lcom/sec/android/app/fm/RssiTestActivity;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 203
    :catch_1
    move-exception v1

    goto :goto_0
.end method
