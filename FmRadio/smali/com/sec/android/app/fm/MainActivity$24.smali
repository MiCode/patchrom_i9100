.class Lcom/sec/android/app/fm/MainActivity$24;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4131
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$24;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/high16 v5, 0x42c8

    .line 4133
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$24;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$7100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4134
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 4151
    :goto_0
    return-void

    .line 4137
    :cond_0
    const/4 v1, 0x0

    .line 4139
    .local v1, inputFreq:F
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4145
    mul-float v3, v1, v5

    const v4, 0x4628c000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 4146
    const/high16 v1, 0x42d8

    .line 4150
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$24;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V

    goto :goto_0

    .line 4140
    :catch_0
    move-exception v0

    .line 4141
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$24;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v4, "NumberFormatException"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4147
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    mul-float v3, v1, v5

    const v4, 0x4608b800

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 4148
    const/high16 v1, 0x42af

    goto :goto_1
.end method
