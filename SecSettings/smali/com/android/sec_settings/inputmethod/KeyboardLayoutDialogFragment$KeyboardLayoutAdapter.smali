.class final Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 220
    const v0, 0x10900e8

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    .line 221
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 222
    return-void
.end method

.method private inflateOneLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"
    .parameter "label"
    .parameter "checked"

    .prologue
    const/4 v4, 0x0

    .line 250
    move-object v1, p1

    .line 251
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109000f

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 255
    invoke-static {v1, v4}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    .line 257
    :cond_1
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 258
    .local v0, headline:Landroid/widget/CheckedTextView;
    invoke-virtual {v0, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v0, p4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 260
    return-object v1
.end method

.method private inflateTwoLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"
    .parameter "label"
    .parameter "collection"
    .parameter "checked"

    .prologue
    .line 265
    move-object v3, p1

    .line 266
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 267
    :cond_0
    iget-object v4, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900e8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 270
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    .line 272
    :cond_1
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    .local v0, headline:Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 274
    .local v2, subText:Landroid/widget/TextView;
    const v4, 0x102039b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 276
    .local v1, radioButton:Landroid/widget/RadioButton;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {v1, p5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 279
    return-object v3
.end method

.method private static isTwoLine(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setTwoLine(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "twoLine"

    .prologue
    .line 287
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 288
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/KeyboardLayout;

    .line 232
    .local v6, item:Landroid/hardware/input/KeyboardLayout;
    if-eqz v6, :cond_0

    .line 233
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, label:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, collection:Ljava/lang/String;
    :goto_0
    iget v0, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .line 241
    .local v5, checked:Z
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    invoke-direct {p0, p2, p3, v3, v5}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->inflateOneLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    .line 244
    :goto_2
    return-object v0

    .line 236
    .end local v3           #label:Ljava/lang/String;
    .end local v4           #collection:Ljava/lang/String;
    .end local v5           #checked:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090646

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3       #label:Ljava/lang/String;
    const-string v4, ""

    .restart local v4       #collection:Ljava/lang/String;
    goto :goto_0

    .line 240
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5       #checked:Z
    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->inflateTwoLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method public setCheckedItem(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 225
    iput p1, p0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    .line 226
    return-void
.end method
