.class public Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;
.super Landroid/widget/LinearLayout;
.source "AutoRejectDeleteLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field final ATTR:Ljava/lang/String;

.field final NAMESPACE:Ljava/lang/String;

.field checkable:Landroid/widget/CheckBox;

.field checkableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v0, "http://schemas.android.com/apk/res/android"

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->NAMESPACE:Ljava/lang/String;

    .line 27
    const-string v0, "checkable"

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->ATTR:Ljava/lang/String;

    .line 33
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "checkable"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkableId:I

    .line 34
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkable:Landroid/widget/CheckBox;

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkable:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkable:Landroid/widget/CheckBox;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkable:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkable:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkable:Landroid/widget/CheckBox;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkable:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectDeleteLayout;->checkable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0
.end method
