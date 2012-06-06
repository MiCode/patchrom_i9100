.class Lcom/android/OriginalSettings/LocationSettings$5;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/LocationSettings;->showPDRDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/LocationSettings;

.field final synthetic val$cbDontAsk:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/LocationSettings;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/OriginalSettings/LocationSettings$5;->this$0:Lcom/android/OriginalSettings/LocationSettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/LocationSettings$5;->val$cbDontAsk:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings$5;->this$0:Lcom/android/OriginalSettings/LocationSettings;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings$5;->val$cbDontAsk:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #calls: Lcom/android/OriginalSettings/LocationSettings;->selectPdrDescription(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/LocationSettings;->access$100(Lcom/android/OriginalSettings/LocationSettings;ZZ)V

    .line 319
    return-void
.end method
