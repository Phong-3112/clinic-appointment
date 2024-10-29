package com.clinic.appointment.core.jooq;

import java.time.LocalDateTime;
import java.util.Optional;
import org.jooq.RecordContext;
import org.jooq.impl.DefaultRecordListener;
import org.springframework.stereotype.Component;

/**
 * 共通カラム（登録日時、更新日時）の更新を行う{@code RecordListener}.
 * <p>
 * <a href="https://github.com/jOOQ/jOOQ/issues/6250">Automatic update of
 * dates</a>
 * <p>
 * <a href="https://github.com/jOOQ/jOOQ/issues/1592">Add formal support for
 * "audit" fields,
 * such as CREATED_AT, CREATED_BY, MODIFIED_AT, MODIFIED_BY</a>
 */
@Component
public class CommonRecordListener extends DefaultRecordListener {

  private static final String CREATE_DATETIME_FIELD = "created_at";
  private static final String UPDATE_DATETIME_FIELD = "updated_at";

  @Override
  public void insertStart(RecordContext ctx) {
    var now = LocalDateTime.now();
    setTimestamp(ctx, CREATE_DATETIME_FIELD, now);
    setTimestamp(ctx, UPDATE_DATETIME_FIELD, now);
  }

  @Override
  public void updateStart(RecordContext ctx) {
    setTimestamp(ctx, UPDATE_DATETIME_FIELD, LocalDateTime.now());
  }

  private void setTimestamp(RecordContext ctx, String fieldName, LocalDateTime now) {
    Optional.ofNullable(ctx.record().field(fieldName))
        .ifPresent(field -> ctx.record().set(field.coerce(LocalDateTime.class), now));
  }
}
