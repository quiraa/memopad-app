import 'package:flutter/material.dart';
import 'package:flutter_floor/config/themes/typography.dart';
import 'package:flutter_floor/feat/notes/data/entity/note_entity.dart';
import 'package:ionicons/ionicons.dart';

class AvailableNoteContent extends StatelessWidget {
  final List<NoteEntity> notes;
  final void Function(int noteId) onNoteClick;
  final void Function(NoteEntity note) onNoteDelete;

  const AvailableNoteContent({
    Key? key,
    required this.notes,
    required this.onNoteClick,
    required this.onNoteDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: notes.length,
      padding: const EdgeInsets.all(16.0),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final note = notes[index];
        return NoteCard(
          notes: note,
          onNoteClick: onNoteClick,
          onNoteDelete: onNoteDelete,
        );
      },
    );
  }
}

class NoteCard extends StatelessWidget {
  final NoteEntity notes;
  final void Function(int noteId) onNoteClick;
  final void Function(NoteEntity note) onNoteDelete;

  const NoteCard({
    Key? key,
    required this.notes,
    required this.onNoteClick,
    required this.onNoteDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: _buildContent(),
              ),
              IconButton(
                onPressed: () => onNoteDelete(notes),
                icon: const Icon(
                  Ionicons.trash,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          notes.title ?? '',
          style: AppTypography.noteTitle,
        ),
        const SizedBox(height: 8.0),
        Text(
          notes.content ?? '',
          style: AppTypography.noteContent,
        ),
        const SizedBox(height: 8.0),
        Text(
          'Created: ${notes.createdDate ?? ''}',
          style: AppTypography.noteDate,
        ),
      ],
    );
  }
}
