.class public Landroid/webkit/WebChromeClient;
.super Ljava/lang/Object;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebChromeClient$CustomViewCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBingSearchAlertDialogCheckBoxValue(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public isBingSearch(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .parameter "view"

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSearchOptionAvailable(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "SearchName"

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onAlertDialogWithCheckBox(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "window"

    .prologue
    .line 184
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .parameter "consoleMessage"

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .parameter "view"
    .parameter "isDialog"
    .parameter "isUserGesture"
    .parameter "resultMsg"

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "quota"
    .parameter "estimatedDatabaseSize"
    .parameter "totalQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 285
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 286
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 322
    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "result"

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public onNotificationManagerCancelPrompt(I)V
    .locals 0
    .parameter "notificationID"

    .prologue
    .line 358
    return-void
.end method

.method public onNotificationManagerShowPrompt(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/NotificationPermissions$Callback;)V
    .locals 0
    .parameter "iconUrl"
    .parameter "titleStr"
    .parameter "bodyStr"
    .parameter "pointer"
    .parameter "callback"

    .prologue
    .line 351
    return-void
.end method

.method public onNotificationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/NotificationPermissions$Callback;)V
    .locals 0
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 343
    return-void
.end method

.method public onPrintPage()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 33
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0
    .parameter "requiredStorage"
    .parameter "quota"
    .parameter "quotaUpdater"

    .prologue
    .line 307
    invoke-interface {p5, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 308
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 73
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "title"

    .prologue
    .line 40
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 82
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 175
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 115
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 103
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "acceptType"
    .parameter "capture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, uploadFile:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 446
    return-void
.end method

.method public setBingSearch(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 48
    return-void
.end method

.method public setBingSearchAlertDialogCheckBoxValue(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    .line 161
    return-void
.end method

.method public setInstallableWebApp()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 463
    return-void
.end method
