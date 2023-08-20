import { useBackend } from '../backend';
import { Button, LabeledList, Section } from '../components';
import { Window } from '../layouts';

export const WorkforceTerminal = (props, context) => {
  const { act } = useBackend(context);
  return (
    <Window resizable>
      <Window.Content>
        <Section title="Coupon Reader">
          <LabeledList.Item label="Print ID">
            <Button content="Print ID" onClick={() => act('printid')} />
          </LabeledList.Item>
        </Section>
      </Window.Content>
    </Window>
  );
};
