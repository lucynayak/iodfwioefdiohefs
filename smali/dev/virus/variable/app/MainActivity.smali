.class public Ldev/virus/variable/app/MainActivity;
.super Lh0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/virus/variable/app/MainActivity$a;,
        Ldev/virus/variable/app/MainActivity$b;
    }
.end annotation


# static fields
.field public static n:Ljava/lang/String;

.field private static sAwaitingPermission:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lh0/f;-><init>()V

    return-void
.end method

.method private showInjectionDialog(Lm2/a;)V
    .registers 8

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0417\u0430\u043f\u043e\u043c\u043d\u0438\u0442\u044c \u0438 \u0431\u043e\u043b\u044c\u0448\u0435 \u043d\u0435 \u0441\u043f\u0440\u0430\u0448\u0438\u0432\u0430\u0442\u044c"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v1, -0xff5780

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/CheckBox;->setPadding(IIII)V

    new-instance v2, Ldev/virus/variable/app/MainActivity$b;

    invoke-direct {v2, p0, p1, v0}, Ldev/virus/variable/app/MainActivity$b;-><init>(Ldev/virus/variable/app/MainActivity;Lm2/a;Landroid/widget/CheckBox;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u041a\u0443\u0434\u0430 \u0431\u0443\u0434\u0435\u043c \u0438\u043d\u0436\u0435\u043a\u0442\u0438\u0442\u044c?"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u044b \u043e\u0431\u0435 \u0432\u0435\u0440\u0441\u0438\u0438 \u041c\u0430\u0439\u043d\u043a\u0440\u0430\u0444\u0442\u0430. \u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043a\u0443\u0434\u0430 \u0438\u043d\u0436\u0435\u043a\u0442\u0438\u0442\u044c Horrible:"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u041e\u0420\u0418\u0413\u0418\u041d\u0410\u041b"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u041a\u041b\u041e\u041d"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const v3, -0xff5780

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    const v3, -0xff5780

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-super {p0, p1}, Lh0/f;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Ldev/virus/variable/LauncherApplication;->b:Lm2/b;

    iget-object v0, v0, Lm2/b;->a:Lm2/a;

    iget-object v1, v0, Lm2/a;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-static {p0}, Lm2/d;->needsDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Ldev/virus/variable/app/MainActivity;->showInjectionDialog(Lm2/a;)V

    return-void

    .line 1
    :cond_0
    sget-object p1, Ldev/virus/variable/LauncherApplication;->b:Lm2/b;

    .line 2
    iget-object p1, p1, Lm2/b;->a:Lm2/a;

    .line 3
    iget-object v0, p1, Lm2/a;->b:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ldev/virus/variable/app/NoMinecraftActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1.1."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Ldev/virus/variable/app/UnsupportedMinecraftActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_4

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {p0}, Ldev/virus/variable/app/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ldev/virus/variable/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    sput-boolean v0, Ldev/virus/variable/app/MainActivity;->sAwaitingPermission:Z

    return-void

    :cond_4
    const/16 v0, 0x17

    if-lt p1, v0, :cond_6

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    const p1, 0x7f0b001e

    invoke-virtual {p0, p1}, Lh0/f;->setContentView(I)V

    const-string p1, "variable"

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lh0/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "main_color_red"

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v4, 0xff

    const-string v5, "main_color_green"

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "main_color_blue"

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "#%02X%02X%02X"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    sget v0, Ly1/b;->a:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "efw/wjsvt/wbsjbcmf"

    .line 8
    invoke-static {v0}, Ld1/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_7

    .line 9
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lx1/g;

    invoke-direct {v0, p0, v2}, Lx1/g;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_7
    :goto_2
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p2, p3, p1

    if-nez p2, :cond_0

    const p2, 0x7f0b001e

    invoke-virtual {p0, p2}, Lh0/f;->setContentView(I)V

    .line 1
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lx1/g;

    invoke-direct {p3, p0, p1}, Lx1/g;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2
    :cond_0
    const p2, 0x7f0b001e

    invoke-virtual {p0, p2}, Lh0/f;->setContentView(I)V

    new-instance p2, Ljava/lang/Thread;

    const/4 p1, 0x0

    new-instance p3, Lx1/g;

    invoke-direct {p3, p0, p1}, Lx1/g;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Lh0/f;->onRestart()V

    sget-boolean v0, Ldev/virus/variable/app/MainActivity;->sAwaitingPermission:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Ldev/virus/variable/app/MainActivity;->sAwaitingPermission:Z

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method
