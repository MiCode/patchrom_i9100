.class public Lcom/android/OriginalSettings/fmm/RecipientsPlusView;
.super Landroid/widget/LinearLayout;
.source "RecipientsPlusView.java"


# instance fields
.field private SMSMessage:Landroid/widget/EditText;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/fmm/RecipientsPlusView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/fmm/RecipientsPlusView;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/fmm/RecipientsPlusView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public DoSave()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 168
    new-instance v8, Lcom/android/internal/util/NVStore;

    invoke-direct {v8}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 169
    .local v8, filenv:Lcom/android/internal/util/NVStore;
    const-string v10, ""

    .line 170
    .local v10, nvData:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, MTpwd:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v5, "1"

    .line 172
    .local v5, MTStatus:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0711

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, MTSender:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->SMSMessage:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, MTMsg:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, Imsi:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v2, "1"

    .line 177
    .local v2, MTEnabled:Ljava/lang/String;
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 180
    const/4 v7, 0x0

    .line 181
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget-object v13, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v9, v13, :cond_5

    .line 182
    iget-object v13, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 183
    .local v0, ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->isExist()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 186
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "00"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 187
    iget-object v13, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    const v14, 0x7f0b0728

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 188
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setFocus()V

    .line 222
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    :goto_3
    return v12

    .line 171
    .end local v1           #Imsi:Ljava/lang/String;
    .end local v2           #MTEnabled:Ljava/lang/String;
    .end local v3           #MTMsg:Ljava/lang/String;
    .end local v4           #MTSender:Ljava/lang/String;
    .end local v5           #MTStatus:Ljava/lang/String;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_0
    const-string v5, "0"

    goto/16 :goto_0

    .line 175
    .restart local v1       #Imsi:Ljava/lang/String;
    .restart local v3       #MTMsg:Ljava/lang/String;
    .restart local v4       #MTSender:Ljava/lang/String;
    .restart local v5       #MTStatus:Ljava/lang/String;
    :cond_1
    const-string v2, "0"

    goto :goto_1

    .line 192
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .restart local v2       #MTEnabled:Ljava/lang/String;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 194
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 195
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 181
    :cond_3
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 197
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 201
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    :cond_5
    :goto_5
    const/4 v13, 0x5

    if-eq v7, v13, :cond_6

    .line 202
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 203
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 207
    :cond_6
    if-eqz v3, :cond_7

    if-eqz v3, :cond_8

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    .line 208
    :cond_7
    iget-object v13, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    const v14, 0x7f0b0729

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 213
    :cond_8
    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 214
    .local v11, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_9

    if-eqz v1, :cond_a

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_a

    :cond_9
    const-string v1, "0000"

    .line 218
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 220
    sget-object v12, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v8, v10, v12}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 222
    const/4 v12, 0x1

    goto/16 :goto_3
.end method

.method public SetContactNumber(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0x3b

    .line 240
    const/4 v2, 0x0

    .line 242
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 243
    iget-object v9, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 244
    .local v0, ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->isExist()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_1

    .line 247
    add-int/lit8 v3, v2, 0x1

    .end local v2           #count:I
    .local v3, count:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 248
    .local v8, result:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, phNum:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v2, v3

    .line 242
    .end local v3           #count:I
    .end local v7           #phNum:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    .restart local v2       #count:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    :cond_1
    iget-object v9, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 258
    .local v5, mViewIndex:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_2

    .line 259
    iget-object v9, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04004e

    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 260
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v9, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #mViewIndex:I
    .local v6, mViewIndex:I
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 263
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #count:I
    .restart local v3       #count:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 264
    .restart local v8       #result:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 265
    .restart local v7       #phNum:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v5, v6

    .end local v6           #mViewIndex:I
    .restart local v5       #mViewIndex:I
    move v2, v3

    .line 266
    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .line 267
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .end local v7           #phNum:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getCountFilledRecipient()I
    .locals 4

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 229
    .local v0, ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->isExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 231
    add-int/lit8 v1, v1, 0x1

    .line 227
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    :cond_1
    return v1
.end method

.method public init()V
    .locals 15

    .prologue
    const v14, 0x7f04004e

    const/4 v13, 0x0

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, index:I
    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 100
    .local v2, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, rec1:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "none"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line 102
    :cond_0
    const-string v6, ""

    .line 111
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, rec2:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9

    .line 113
    :cond_1
    const-string v7, ""

    .line 122
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, rec3:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "none"

    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 124
    :cond_2
    const-string v8, ""

    .line 133
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, rec4:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "none"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    .line 135
    :cond_3
    const-string v9, ""

    .line 144
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 145
    .local v10, rec5:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_c

    .line 146
    :cond_4
    const-string v10, ""

    .line 154
    :goto_4
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-nez v11, :cond_5

    .line 155
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 156
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, msg:Ljava/lang/String;
    if-eqz v5, :cond_6

    if-eqz v5, :cond_7

    const-string v11, "Keep this message."

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 161
    :cond_6
    const-string v5, ""

    .line 163
    :cond_7
    const v11, 0x7f08009f

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->SMSMessage:Landroid/widget/EditText;

    .line 164
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->SMSMessage:Landroid/widget/EditText;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void

    .line 104
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #rec2:Ljava/lang/String;
    .end local v8           #rec3:Ljava/lang/String;
    .end local v9           #rec4:Ljava/lang/String;
    .end local v10           #rec5:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 105
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 107
    .local v0, ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0

    .line 115
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v7       #rec2:Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 116
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 118
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_1

    .line 126
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v8       #rec3:Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 127
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 129
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v8}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_2

    .line 137
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v9       #rec4:Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 138
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 140
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v9}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_3

    .line 148
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v10       #rec5:Ljava/lang/String;
    :cond_c
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 149
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 151
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v10}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_4
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 64
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    .line 69
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 71
    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .local v0, PlusButton:Landroid/widget/ImageView;
    new-instance v1, Lcom/android/OriginalSettings/fmm/RecipientsPlusView$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView$1;-><init>(Lcom/android/OriginalSettings/fmm/RecipientsPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RecipientsPlusView;->init()V

    .line 93
    return-void
.end method
