.class Lcom/android/OriginalSettings/AccessibilitySettings$3;
.super Landroid/preference/Preference;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;->updateServicesPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$3;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 726
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 728
    const v3, 0x7f0801b8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 730
    .local v0, containerView:Landroid/widget/LinearLayout;
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 732
    const v3, 0x7f080117

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 733
    .local v1, summaryView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings$3;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    const v4, 0x7f0b052f

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    return-void
.end method
