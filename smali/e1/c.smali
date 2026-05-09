.class public final Le1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Le1/d;

.field public final synthetic c:Le1/a$b;


# direct methods
.method public constructor <init>(Le1/d;)V
    .registers 2

    iput-object p1, p0, Le1/c;->b:Le1/d;

    const/4 p1, 0x0

    iput-object p1, p0, Le1/c;->c:Le1/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Le1/c;->b:Le1/d;

    iget-object v1, p0, Le1/c;->c:Le1/a$b;

    invoke-virtual {v0, v1}, Le1/d;->b(Le1/a$b;)V

    return-void
.end method
