.class public Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;
.super Landroid/app/Fragment;
.source "CryptKeeperSettings.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final MIN_BATTERY_LEVEL:I = 0x50

.field static final MIN_PASSWORD_QUALITY:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "CryptKeeper"


# instance fields
.field private mBatteryWarning:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWarning:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    new-instance v0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 6
    .param p1, "request"    # I

    .prologue
    .line 162
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    .line 164
    .local v1, "quality":I
    const v3, 0x8000

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 170
    :cond_0
    const/high16 v3, 0x20000

    if-ge v1, v3, :cond_1

    .line 171
    const/4 v3, 0x0

    .line 175
    :goto_0
    return v3

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 175
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v4, 0x7f0a0849

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0a084a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 205
    const v1, 0x7f0a0630

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 206
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 209
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 140
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 141
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 144
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 146
    .local v3, "status":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 152
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "status":I
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 185
    const/16 v2, 0x37

    if-eq p1, v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 193
    const-string v2, "type"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 194
    .local v1, "type":I
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "password":Ljava/lang/String;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liqxtest: password="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-direct {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const v0, 0x7f04003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 108
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0e00dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0e00db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0e00da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 129
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 123
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method
