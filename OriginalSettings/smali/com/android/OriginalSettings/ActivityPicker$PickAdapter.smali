.class public Lcom/android/OriginalSettings/ActivityPicker$PickAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PickAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/ActivityPicker$PickAdapter$Item;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/ActivityPicker$PickAdapter$Item;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 299
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/OriginalSettings/ActivityPicker$PickAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 300
    iput-object p2, p0, Lcom/android/OriginalSettings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    .line 301
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/OriginalSettings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/OriginalSettings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 321
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 328
    if-nez p2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/OriginalSettings/ActivityPicker$PickAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/ActivityPicker$PickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ActivityPicker$PickAdapter$Item;

    .local v0, item:Lcom/android/OriginalSettings/ActivityPicker$PickAdapter$Item;
    move-object v1, p2

    .line 333
    check-cast v1, Landroid/widget/TextView;

    .line 334
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, v0, Lcom/android/OriginalSettings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v2, v0, Lcom/android/OriginalSettings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 337
    return-object p2
.end method
