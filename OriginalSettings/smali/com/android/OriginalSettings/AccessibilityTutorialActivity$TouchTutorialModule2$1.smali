.class Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule2$1;
.super Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule2;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/AccessibilityTutorialActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule2;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule2;Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule2$1;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule2;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected populateView(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "text"
    .parameter "label"
    .parameter "icon"

    .prologue
    const/4 v0, 0x0

    .line 431
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {p1, p3, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 433
    return-void
.end method
