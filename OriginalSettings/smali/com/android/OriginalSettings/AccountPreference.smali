.class public Lcom/android/OriginalSettings/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountLabel:Ljava/lang/CharSequence;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter
    .parameter "accountLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p4, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/android/OriginalSettings/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 52
    iput-object p4, p0, Lcom/android/OriginalSettings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    .line 53
    iput-object p3, p0, Lcom/android/OriginalSettings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object p5, p0, Lcom/android/OriginalSettings/AccountPreference;->mAccountLabel:Ljava/lang/CharSequence;

    .line 55
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccountPreference;->setLayoutResource(I)V

    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccountPreference;->setPersistent(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mAccountLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4
    .parameter "status"

    .prologue
    const v3, 0x7f0b0603

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 167
    const-string v0, "AccountPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0601

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0602

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 152
    const v0, 0x7f020093

    .line 153
    .local v0, res:I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return v0

    .line 143
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f02008f

    .line 144
    .restart local v0       #res:I
    goto :goto_0

    .line 146
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f020091

    .line 147
    .restart local v0       #res:I
    goto :goto_0

    .line 149
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f020093

    .line 150
    .restart local v0       #res:I
    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusMessage(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 133
    const v0, 0x7f0b060e

    .line 134
    .local v0, res:I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return v0

    .line 124
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f0b060c

    .line 125
    .restart local v0       #res:I
    goto :goto_0

    .line 127
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f0b060d

    .line 128
    .restart local v0       #res:I
    goto :goto_0

    .line 130
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f0b060e

    .line 131
    .restart local v0       #res:I
    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 174
    instance-of v0, p1, Lcom/android/OriginalSettings/AccountPreference;

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 178
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    check-cast p1, Lcom/android/OriginalSettings/AccountPreference;

    .end local p1
    iget-object v1, p1, Lcom/android/OriginalSettings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/AccountPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mAccountLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccountPreference;->setSummary(I)V

    .line 94
    :goto_0
    const v0, 0x7f08000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/OriginalSettings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const v0, 0x7f08000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/OriginalSettings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/OriginalSettings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mAccountLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setProviderIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/OriginalSettings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setSyncStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/OriginalSettings/AccountPreference;->mStatus:I

    .line 110
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/AccountPreference;->mAccountLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 114
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccountPreference;->setSummary(I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccountPreference;->notifyChanged()V

    goto :goto_0
.end method
