.class public Lcom/android/settings/PrivacyAlertProceedDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertProceedDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private CarrierLegalEnPath:Ljava/lang/String;

.field private CarrierLegalEnURL:Ljava/lang/String;

.field private CarrierLegalEsPath:Ljava/lang/String;

.field private CarrierLegalEsURL:Ljava/lang/String;

.field bFileExist:Ljava/lang/Boolean;

.field bTest:Ljava/lang/Boolean;

.field private mView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 53
    const-string v0, "/carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    .line 54
    const-string v0, "/carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    .line 56
    const-string v0, "file:///carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    .line 57
    const-string v0, "file:///carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 12

    .prologue
    const v11, 0x7f090d8a

    const/4 v10, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040025

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 82
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0b004c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, contentView:Landroid/widget/TextView;
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    .line 86
    const-string v5, ""

    .line 88
    .local v5, sales_code:Ljava/lang/String;
    :try_start_0
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    const-string v7, "ril.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 95
    :cond_0
    :goto_0
    const-string v7, "PrivacyAlertProceedDialogActivity"

    const-string v8, "createView : "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_UseChameleon"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 98
    const-string v7, "PrivacyAlertProceedDialogActivity"

    const-string v8, "TAG_CSCFEATURE_COMMON_USECHAMELEON : true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 100
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, currentLang:Ljava/lang/String;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentLang : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    const-string v7, "/mnt/sdcard/Download/privacy_en.html"

    iput-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    .line 104
    const-string v7, "/mnt/sdcard/Download/privacy_es.html"

    iput-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    .line 106
    const-string v7, "file:///mnt/sdcard/Download/privacy_en.html"

    iput-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    .line 107
    const-string v7, "file:///mnt/sdcard/Download/privacy_es.html"

    iput-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    .line 109
    :cond_1
    const-string v7, "es"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 110
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, mfile:Ljava/io/File;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File exists : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #mfile:Ljava/io/File;
    :goto_1
    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    .line 135
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bFileExist : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v7, "SPR"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f090d88

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090d89

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090d8b

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .end local v6           #view:Landroid/view/View;
    :goto_2
    return-object v6

    .line 92
    .restart local v6       #view:Landroid/view/View;
    :catch_0
    move-exception v2

    .line 93
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    const-string v8, "Reading failed for sales code"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 116
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v3       #locale:Ljava/util/Locale;
    .restart local v4       #mfile:Ljava/io/File;
    :cond_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 119
    .end local v4           #mfile:Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v4       #mfile:Ljava/io/File;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File exists : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 122
    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :cond_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 129
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #mfile:Ljava/io/File;
    :cond_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 138
    :cond_6
    const-string v7, "BST"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f090d90

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090d91

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090d92

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 140
    :cond_7
    const-string v7, "VMU"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f090d94

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090d95

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090d96

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090d97

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 143
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f090d8c

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090d8d

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090d8e

    invoke-virtual {p0, v8}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 146
    :cond_9
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    goto/16 :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 166
    packed-switch p2, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->finish()V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 70
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f090d84

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 76
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->setupAlert()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 155
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 159
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 163
    return-void
.end method
