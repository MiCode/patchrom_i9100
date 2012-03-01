.class Lcom/android/phone/OverturnTutorialIncallScreen$3;
.super Ljava/lang/Object;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OverturnTutorialIncallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$3;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$3;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->showDialog(I)V

    .line 129
    return-void
.end method
