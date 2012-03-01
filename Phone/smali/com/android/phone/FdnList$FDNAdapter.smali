.class Lcom/android/phone/FdnList$FDNAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "FdnList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FDNAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnList;


# direct methods
.method public constructor <init>(Lcom/android/phone/FdnList;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "items"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/phone/FdnList$FDNAdapter;->this$0:Lcom/android/phone/FdnList;

    .line 219
    invoke-static {}, Lcom/android/phone/FdnList;->access$000()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/FdnList;->access$100()[I

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 220
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 224
    move-object v3, p2

    .line 225
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 226
    iget-object v5, p0, Lcom/android/phone/FdnList$FDNAdapter;->this$0:Lcom/android/phone/FdnList;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/phone/FdnList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 227
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f04001d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 230
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/FdnList$FDNAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    const v5, 0x7f090087

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 232
    .local v1, name:Landroid/widget/TextView;
    const v5, 0x7f09009d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 233
    .local v2, num:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 234
    iget-object v5, p0, Lcom/android/phone/FdnList$FDNAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_1
    if-eqz v2, :cond_2

    .line 238
    iget-object v5, p0, Lcom/android/phone/FdnList$FDNAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v5, p0, Lcom/android/phone/FdnList$FDNAdapter;->this$0:Lcom/android/phone/FdnList;

    #getter for: Lcom/android/phone/FdnList;->fdnNumber:Ljava/util/Vector;
    invoke-static {v5}, Lcom/android/phone/FdnList;->access$200(Lcom/android/phone/FdnList;)Ljava/util/Vector;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/FdnList$FDNAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 242
    :cond_2
    const v5, 0x7f0900a0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 243
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 244
    new-instance v5, Lcom/android/phone/FdnList$FDNAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/FdnList$FDNAdapter$1;-><init>(Lcom/android/phone/FdnList$FDNAdapter;I)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const-string v5, "fdn_button_call"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    const v5, 0x7f09009e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 252
    const v5, 0x7f09009f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .end local v0           #btn:Landroid/widget/Button;
    .end local v1           #name:Landroid/widget/TextView;
    .end local v2           #num:Landroid/widget/TextView;
    :cond_3
    return-object v3
.end method
